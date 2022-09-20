
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-galactic-fmi-adapter-examples";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/galactic/fmi_adapter_examples/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "6fa264616c1823d9496d83a2011ea12904205a136c7c79f4506818599d1325c3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fmi-adapter launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
