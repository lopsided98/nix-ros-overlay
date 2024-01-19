
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-library";
  version = "1.0.1-r4";

  src = fetchurl {
    url = "https://github.com/SCHUNK-GmbH-Co-KG/schunk_svh_library-release/archive/release/noetic/schunk_svh_library/1.0.1-4.tar.gz";
    name = "1.0.1-4.tar.gz";
    sha256 = "32ac7237f3b5768e70d76f0c1621c5edc5d5f11c4a9864bfafcc991611581295";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing the Schunk five finger hand.'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
