
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-introspection, roscompile, roslint }:
buildRosPackage {
  pname = "ros-kinetic-magical-ros2-conversion-tool";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/kinetic/magical_ros2_conversion_tool/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "19bbb887a73eeebcb2c5325f51809134d8f91ab5480a8a34364d454b9bf7e2c7";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ ros-introspection roscompile ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magical_ros2_conversion_tool package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
