
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-python, xacro }:
buildRosPackage {
  pname = "ros-humble-talos-description-inertial";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_robot-release/archive/release/humble/talos_description_inertial/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e9d9cfc38e44dcc2efd8bf5640da1a37b9d46f1da0bfdd4a05e4594cbe05ee00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "Inertial parameters of talos";
    license = with lib.licenses; [ asl20 ];
  };
}
