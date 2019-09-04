
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-example-interfaces";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/example_interfaces-release/archive/release/crystal/example_interfaces/0.6.2-0.tar.gz;
    sha256 = "0c93953b378fdd65af4e4b68d46bb155e4dbb2ae469e8f04c9c445e3cdfb8224";
  };

  buildInputs = [ action-msgs ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Contains message and service definitions used by the examples.'';
    license = with lib.licenses; [ asl20 ];
  };
}
