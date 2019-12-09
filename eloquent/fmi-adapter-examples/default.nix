
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fmi-adapter, launch-ros, ament-cmake, launch }:
buildRosPackage {
  pname = "ros-eloquent-fmi-adapter-examples";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/eloquent/fmi_adapter_examples/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "0f333698c39e374f1f44c6746747a68cfe81a3201ef25ea21f0a656c757aeb72";
  };

  buildType = "ament_cmake";
  buildInputs = [ fmi-adapter ];
  propagatedBuildInputs = [ fmi-adapter launch-ros launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
