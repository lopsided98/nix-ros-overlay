
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-eloquent-fmi-adapter-examples";
  version = "0.1.7-r2";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmi_adapter_ros2-release/archive/release/eloquent/fmi_adapter_examples/0.1.7-2.tar.gz";
    name = "0.1.7-2.tar.gz";
    sha256 = "1b7d09db16f2083ec7f5e5f9bbf44267d88f65a4e2f22fb38b63a3daf1f0d4b9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ fmi-adapter launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
