
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libbase }:
buildRosPackage {
  pname = "ros-humble-mola-yaml";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_yaml/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "7ec682a1434b072647f29244103d242954fda9fbe07230fdae3a8370fe154806";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libbase ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "YAML helper library common to MOLA modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
