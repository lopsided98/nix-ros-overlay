
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, pythonPackages, rostest, catkin }:
buildRosPackage {
  pname = "ros-melodic-ros-pytest";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/machinekoder/ros_pytest-release/archive/release/melodic/ros_pytest/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "8204f445e165a048869660415c84fa1f478c1d1ecf8dabd79dd9a1187b95048e";
  };

  buildType = "catkin";
  buildInputs = [ rospy pythonPackages.pytest ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospy pythonPackages.pytest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_pytest package'';
    license = with lib.licenses; [ mit ];
  };
}
