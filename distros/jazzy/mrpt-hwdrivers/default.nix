
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-comms, mrpt-maps, mrpt-viz }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-hwdrivers";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_hwdrivers/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "56bc3ac0f8dd1a67d51787ef36a19bc7c0245c8e6f3fe600f99d349f72fc42b7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-comms mrpt-maps mrpt-viz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_hwdrivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
