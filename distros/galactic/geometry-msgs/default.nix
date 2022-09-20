
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-geometry-msgs";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/galactic/geometry_msgs/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "708f6d1292fae2e658bfbde2c3dfafe5b370e51d8c20bf405f60b5d485418e90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some geometry related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
