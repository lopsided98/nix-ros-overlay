
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-gripper-controller-configuration, pal-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-gripper";
  version = "3.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper/3.0.7-1.tar.gz";
    name = "3.0.7-1.tar.gz";
    sha256 = "0e7a30ef946dc6eeee3f930d723f9ef9456e51ce67cae11cdbbbbc4948fd933a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pal-gripper-controller-configuration pal-gripper-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The pal_gripper package'';
    license = with lib.licenses; [ asl20 ];
  };
}
