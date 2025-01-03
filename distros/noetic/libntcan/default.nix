
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dpkg }:
buildRosPackage {
  pname = "ros-noetic-libntcan";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libntcan/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "f14b42ba1acb8ba75e2a478a0d7acd5c5c97f7aafc0c36fd032517c6fd6c65fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dpkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package wraps the libntcan to use it as a ros dependency.";
    license = with lib.licenses; [ "Proprietary" ];
  };
}
