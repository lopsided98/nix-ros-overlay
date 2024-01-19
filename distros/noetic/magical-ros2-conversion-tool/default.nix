
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-introspection, roscompile, roslint }:
buildRosPackage {
  pname = "ros-noetic-magical-ros2-conversion-tool";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/noetic/magical_ros2_conversion_tool/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "ee4a496fc629420949f653293ac017c24c09981af81f9cc48cd1dc127708ae61";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ ros-introspection roscompile ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magical_ros2_conversion_tool package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
