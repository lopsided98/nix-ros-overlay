
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-introspection, roscompile, roslint }:
buildRosPackage {
  pname = "ros-noetic-magical-ros2-conversion-tool";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/noetic/magical_ros2_conversion_tool/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "239d6d47087638c7081c6133064bb3558a0f1fea45ed8417de26530eed6b6ed5";
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
