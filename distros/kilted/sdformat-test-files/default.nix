
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-sdformat-test-files";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/kilted/sdformat_test_files/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "a2cdac40917f234493db68927c92db1a91cb7dce93f1929facc940b0e627f2e4";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Example SDFormat XML files for testing tools using hthis format.";
    license = with lib.licenses; [ asl20 ];
  };
}
