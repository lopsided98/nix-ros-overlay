
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, class-loader, pluginlib, roscpp, rviz, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-rviz-recorder-buttons";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ipa-jfh/robot_recorder-release/archive/release/kinetic/rviz_recorder_buttons/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "f061af668eba0b24cc909015056d70db30d52de6018955dd457404d8087d1de5";
  };

  buildType = "catkin";
  buildInputs = [ class-loader ];
  propagatedBuildInputs = [ actionlib pluginlib roscpp rviz std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rviz_recorder_buttons package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
