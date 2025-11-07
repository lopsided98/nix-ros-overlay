
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-simulation";
  version = "1.12.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_simulation-release/archive/release/humble/tiago_pro_simulation/1.12.2-1.tar.gz";
    name = "1.12.2-1.tar.gz";
    sha256 = "883735016e8be7fd29668615e7f54e783042d271dbb24b4678163021ae62a39e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-pro-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_pro_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
