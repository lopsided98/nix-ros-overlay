
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-kuka-driver-interfaces";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_driver_interfaces/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "eaab57caad3fa51273680cd42c51cc378434c37820b267371e32deed3f935809";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message definitions necessary for using KUKA drivers";
    license = with lib.licenses; [ asl20 ];
  };
}
