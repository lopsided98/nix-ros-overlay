
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-gps-msgs";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/foxy/gps_msgs/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "4c700cee631e72df22f3e4312f1213da730f7c938e52715ea37bd9cddd55fb57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''GPS messages for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
