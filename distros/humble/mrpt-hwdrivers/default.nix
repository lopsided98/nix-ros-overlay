
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-comms, mrpt-maps, mrpt-viz }:
buildRosPackage {
  pname = "ros-humble-mrpt-hwdrivers";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_hwdrivers/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "04203a086479a17fee8a11fbc3caead4a3a442b57231d52e90f2bada970e2e62";
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
