
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-dashing-fmi-adapter-examples";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/dashing/fmi_adapter_examples/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "a108d330b317cf8ae495245e3c0cfd79ccb92d30cf3a6efe294e4943882a9efd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ fmi-adapter launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
