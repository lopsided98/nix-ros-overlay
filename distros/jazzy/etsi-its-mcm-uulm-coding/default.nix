
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-mcm-uulm-coding";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_mcm_uulm_coding/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "86acdd036e7b60a91f75344eca19fcb83d0411c4f021be249987d9f50e635a54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for draft MCM (TS) version of UULM generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
