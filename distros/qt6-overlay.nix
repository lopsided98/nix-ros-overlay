# Common overlay for ROS distros using Qt6. At time of writing Lyrical, Rolling
self:
rosSelf: rosSuper: with rosSelf.lib; {
  # keep-sorted start block=yes

  joint-state-publisher-gui = rosSuper.joint-state-publisher-gui.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
  });

  # keep-sorted end
}
