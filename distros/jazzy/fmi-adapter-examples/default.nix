
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-jazzy-fmi-adapter-examples";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/jazzy/fmi_adapter_examples/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "7868f33f21fabde2ca8b826b0d8c731ce483d6bcbe3f678a89cde659e1ee110e";
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
