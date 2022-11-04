
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, criutils, eigen, handeye, jsoncpp, pluginlib, rosconsole, roscpp, rosunit, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-calibration-plugins";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/JStech/moveit_calibration-release/archive/release/noetic/moveit_calibration_plugins/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "56adbbdc424c1c5cb95d8274a4dd5b475d71b08994b2cedaed56976dd64106e8";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ baldor criutils handeye jsoncpp pluginlib rosconsole roscpp sensor-msgs tf2 tf2-eigen tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugins of MoveIt calibration'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
