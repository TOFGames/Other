using UnityEditor;
using UnityEngine;

public class BURAKURA : EditorWindow {
    private static string texturePath1 = "Assets/Resources/youareanidiot.png";
    private static string texturePath2 = "Assets/Resources/youareanidiot2.png";

    private static Texture2D tex1;
    private static Texture2D tex2;

    private int _time;

    private static int cloneNum;
    private static int cloneNumLength = 20;

    private static AudioClip audioClip;

    //=============================================================
    [MenuItem("OPEN THIS!/SPECIAL")]
    public static void Open () {
        Init();
        cloneNum = 0;
    }

    public void OpenClone () {
        Init();
        cloneNum++;
    }

    private static void Init () {
        var window = CreateInstance<BURAKURA>();
        window.Show();
        window.position = new Rect(Random.Range(0,1000),Random.Range(0,600),500,275);

        tex1 = AssetDatabase.LoadAssetAtPath<Texture2D>(texturePath1);
        tex2 = AssetDatabase.LoadAssetAtPath<Texture2D>(texturePath2);

        audioClip = Resources.Load<AudioClip>("bgm1");
        AudioUtility.PlayClip(audioClip,0,true);
    }

    private void Update () {
        _time++;
        Repaint();
    }

    private void OnGUI () {
        if(_time < 30) {
            EditorGUI.DrawPreviewTexture(new Rect(0,0,position.width,position.height),tex1);
        } else {
            EditorGUI.DrawPreviewTexture(new Rect(0,0,position.width,position.height),tex2);
            if(_time >= 60) {
                _time = 0;
            }
        }
    }

    private void OnDisable () {
        AudioUtility.StopClip(audioClip);

        //クローンを一定数増やしたら複製しない
        if(cloneNum <= cloneNumLength) {
            OpenClone();
            OpenClone();
            OpenClone();
        }
    }
}