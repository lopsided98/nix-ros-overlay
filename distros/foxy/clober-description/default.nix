
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, urdf }:
buildRosPackage {
  pname = "ros-foxy-clober-description";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_description/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "fb3d188d7210abdfb7eda4863e5fb24d70963786f6a420699f34df85f0de09f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
