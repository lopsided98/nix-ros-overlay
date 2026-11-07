
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, gtsam, mola-common, mola-gtsam-factors, mola-yaml, mp2p-icp, mrpt-maps }:
buildRosPackage {
  pname = "ros-jazzy-mola-georeferencing";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/jazzy/mola_georeferencing/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "273cad7af7eed03d26832337209d8f399124f06043fa92eaabdee23900213657";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ cli11 gtsam mola-common mola-gtsam-factors mola-yaml mp2p-icp mrpt-maps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library for georeferencing key-frame maps (simplemaps) and related CLI tools";
    license = with lib.licenses; [ gpl3Only ];
  };
}
