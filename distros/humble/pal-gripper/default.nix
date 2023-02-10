
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-gripper-controller-configuration, pal-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-gripper";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gripper-release/archive/release/humble/pal_gripper/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "4a9d0423c569fc6773b8f63265efb7434c0246cbbd193bb51a4b97e7d6f919eb";
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
