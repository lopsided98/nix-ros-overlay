
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, robot-activity, roslint, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-robot-activity-tutorials";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/snt-robotics/robot_activity-release/archive/release/lunar/robot_activity_tutorials/0.1.1-0.tar.gz;
    sha256 = "8316d17da4ae9958672b164f3e603b5011c0f85dc57450582aa27c04a4b38186";
  };

  buildInputs = [ std-srvs robot-activity roscpp roslint ];
  propagatedBuildInputs = [ std-srvs robot-activity roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_activity_tutorials package'';
    #license = lib.licenses.BSD;
  };
}
