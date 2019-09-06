
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-interface";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_typesupport_interface/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "c26bc487256f5667128fe176e27cf2295aab3474a41a53286066e0405b36d085";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The interface for rosidl typesupport packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
