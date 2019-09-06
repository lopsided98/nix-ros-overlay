
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-interface";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_typesupport_interface/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "b20b69cf534efa73e3741e0d8c454b1db9bdd8c97133cdbde0b2afc577365292";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The interface for rosidl typesupport packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
