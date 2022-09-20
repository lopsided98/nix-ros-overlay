
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-introspection, roscompile, roslint }:
buildRosPackage {
  pname = "ros-melodic-magical-ros2-conversion-tool";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/roscompile-release/archive/release/melodic/magical_ros2_conversion_tool/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "64f1110ed8827dd7a8bf2d5336683dde212b891b2bc023e09cc424125e147dcc";
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
