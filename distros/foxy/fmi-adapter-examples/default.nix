
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-foxy-fmi-adapter-examples";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/foxy/fmi_adapter_examples/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "121b362ebdeb58a1f8a3decbb38e06c23bfd9fcf9c49dd42d10afbeeabf4ad53";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ fmi-adapter launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
