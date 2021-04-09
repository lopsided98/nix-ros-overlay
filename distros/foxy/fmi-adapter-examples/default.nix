
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-foxy-fmi-adapter-examples";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/foxy/fmi_adapter_examples/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5c333c2215505baae55f1e1ee2aa0d8ee5a1f1396eff744f417c431ac74865d6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ fmi-adapter launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
