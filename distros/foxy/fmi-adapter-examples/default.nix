
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-foxy-fmi-adapter-examples";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/foxy/fmi_adapter_examples/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "55f46ea7e09bc868c5200fc9f7ba8741779aa36f942aea3d9b40708c31c58a58";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ fmi-adapter launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
