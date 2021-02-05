
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-introspection, roscompile, roslint }:
buildRosPackage {
  pname = "ros-melodic-magical-ros2-conversion-tool";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/melodic/magical_ros2_conversion_tool/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8434766585163e348ae2bacbc6760f5b1dc4e44db6332c4ae656faa70d18da47";
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
