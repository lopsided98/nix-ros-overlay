# Common overlay for ROS distros using Qt6. At time of writing Lyrical, Rolling
self:
rosSelf: rosSuper: with rosSelf.lib; {
  # keep-sorted start block=yes

  joint-state-publisher-gui = rosSuper.joint-state-publisher-gui.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
  });
  plotjuggler = rosSuper.plotjuggler.overrideAttrs ({
    buildInputs ? [], propagatedBuildInputs ? [], ...
  }: {
    # Plotjuggler needs Qt5 and propagates it. This results in Qt
    # version mismatch error when plotjuggler is included in a
    # buildEnv with other Qt6 ROS packages (most of packages in
    # Lyrical). To avoid that, we do not propagate Qt dependencies
    # outside of Plotjuggler.
    propagatedBuildInputs = filter (p: ! hasPrefix "qt" (p.name or "")) propagatedBuildInputs;
    buildInputs = filter (p: hasPrefix "qt" (p.name or "")) propagatedBuildInputs;
  });

  # keep-sorted end
}
