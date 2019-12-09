
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-ets-msgs";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/brunodmt/ets_ros2-release/archive/release/crystal/ets_msgs/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "082495a82ab3acee57fc481d295a4926ac065b963b3f6a8dd4355fb25a1a1851";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Messages definition for ETS2/ATS telemetry and configuration data'';
    license = with lib.licenses; [ asl20 ];
  };
}
