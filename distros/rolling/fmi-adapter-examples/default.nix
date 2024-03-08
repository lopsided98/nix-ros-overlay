
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmi-adapter, launch, launch-ros }:
buildRosPackage {
  pname = "ros-rolling-fmi-adapter-examples";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fmi_adapter-release/archive/release/rolling/fmi_adapter_examples/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "17844f4bb7ceee128ff0f3a6621612d7306dcb316e925bcd59ab83770305f42e";
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
