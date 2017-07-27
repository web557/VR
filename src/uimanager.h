#ifndef UIMANAGER_H
#define UIMANAGER_H

class AnimationWidget;
class QUndoStack;
class QUndoCommand;
class MainWindow;
class SceneViewWidget;

enum class SceneMode
{
    EditMode,
    PlayMode
};

class UiManager
{
public:
    static AnimationWidget* animationWidget;
    static SceneViewWidget* sceneViewWidget;

    static AnimationWidget *getAnimationWidget();
    static void setAnimationWidget(AnimationWidget *value);

    static SceneViewWidget *getSceneViewWidget();
    static void setSceneViewWidget(SceneViewWidget *value);

    static void enterPlayMode();
    static void enterEditMode();

    static MainWindow *mainWindow;
    static void updateWindowTitle();

    static bool isUndoStackDirty();
    static void setUndoStack(QUndoStack*);
    static void pushUndoStack(QUndoCommand*);
    static void popUndoStack();

    static SceneMode sceneMode;

private:
    static QUndoStack* undoStack;
};

#endif // UIMANAGER_H
