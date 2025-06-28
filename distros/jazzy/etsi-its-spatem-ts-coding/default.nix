
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-spatem-ts-coding";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_spatem_ts_coding/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "70645708de4f8dd28e959c6fb339e8c6c4ac9845961fd94cf5e7c54e5b46fef9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS SPATEMs (TS) generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
