using UnityEngine;
using System.IO;
using UnityEditor;

public class TestDir : MonoBehaviour {
    private void Update () {
        if(Input.GetKeyDown(KeyCode.A)) {
            DirectoryInfo info = new DirectoryInfo(Application.dataPath + @"/" + "test");
            info.Create();
        }

        if(Input.GetKeyDown(KeyCode.B)) {
            DirectoryInfo info = new DirectoryInfo(Application.dataPath + @"/" + "test");
            info.Create();

            AssetDatabase.Refresh();
        }
    }
}