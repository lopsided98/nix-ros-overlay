
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-pal-statistics-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_statistics-release/archive/release/galactic/pal_statistics_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "a3cd5d3a226912558a01ff80c0040814aafba99e0f9f5c90be289aa17a19b4d1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''Statistics msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
