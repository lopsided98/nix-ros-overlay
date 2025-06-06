
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-kilted-fmi-adapter-examples";
  version = "2.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/kilted/fmi_adapter_examples/2.1.2-3.tar.gz";
    name = "2.1.2-3.tar.gz";
    sha256 = "8b26bb061de3d271ac0a04d692cf960a08ab2305c0e3270c0cabbfee3832c179";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fmi-adapter launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides small examples for use of the fmi_adapter package";
    license = with lib.licenses; [ asl20 ];
  };
}
