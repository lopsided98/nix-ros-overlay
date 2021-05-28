
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-galactic-fmi-adapter-examples";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/galactic/fmi_adapter_examples/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "423d1407ec4c3ea2022bbfeb2a3e1da9b7b7f5cce7b817c40f67036a6d291302";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ fmi-adapter launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
