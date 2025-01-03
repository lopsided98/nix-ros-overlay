
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-sdformat-test-files";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/jazzy/sdformat_test_files/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "be626dbb04385d7a848435f05cc68177aa0fda8452df099aacdc45cb72c043ab";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Example SDFormat XML files for testing tools using hthis format.";
    license = with lib.licenses; [ asl20 ];
  };
}
