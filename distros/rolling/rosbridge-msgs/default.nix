
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rosbridge-msgs";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosbridge_msgs/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "ef480431407be2ce67ee541fa8d7e445902063f4deea2b9a48c241f848275fa2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros builtin-interfaces rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Package containing message files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
