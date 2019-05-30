using UnityEngine;
using System.IO;
using UnityEditor;

public class TestDir : MonoBehaviour {
    private void Update () {
        if(Input.GetKeyDown(KeyCode.A)) {
            CreateTestText();
            CheckTestText();
        }

        if(Input.GetKeyDown(KeyCode.B)) {
            CreateTestText();
            AssetDatabase.Refresh();
            CheckTestText();
        }
    }

    private void CreateTestText () {
        using(FileStream fs = File.Create(Application.dataPath + @"/Resources/test.txt")) {
            fs.Close();
        }
    }

    private void CheckTestText () {
        if(Resources.Load("test")) {
            Debug.Log(Resources.Load("test").ToString());
        } else {
            Debug.Log("text is nothing.");
        }
    }
}