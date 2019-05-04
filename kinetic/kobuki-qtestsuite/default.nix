
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, nav-msgs, qt-gui-py-common, rospy, rqt-plot, rqt-py-common, kobuki-testsuite, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-qtestsuite";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_qtestsuite/0.5.7-0.tar.gz;
    sha256 = "efb81e6b4380549a16cbd71921d1f8054544365fdc5fc65582f69530e096bc94";
  };

  buildInputs = [ rqt-gui-py rqt-gui kobuki-testsuite nav-msgs rospy rqt-plot rqt-py-common qt-gui-py-common geometry-msgs ];
  propagatedBuildInputs = [ rqt-gui-py rqt-gui kobuki-testsuite nav-msgs rospy rqt-plot rqt-py-common qt-gui-py-common geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An rqt plugin that provides a graphical, interactive testsuite for Kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
