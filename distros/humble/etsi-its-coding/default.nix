
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, etsi-its-cam-coding, etsi-its-cam-ts-coding, etsi-its-cpm-ts-coding, etsi-its-denm-coding, etsi-its-denm-ts-coding, etsi-its-mapem-ts-coding, etsi-its-spatem-ts-coding, etsi-its-vam-ts-coding, ros-environment }:
buildRosPackage {
  pname = "ros-humble-etsi-its-coding";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/humble/etsi_its_coding/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "970f11af6519bcd75d653db57428e9e209fd2c87cb110e19e4005dc68d548db8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ etsi-its-cam-coding etsi-its-cam-ts-coding etsi-its-cpm-ts-coding etsi-its-denm-coding etsi-its-denm-ts-coding etsi-its-mapem-ts-coding etsi-its-spatem-ts-coding etsi-its-vam-ts-coding ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS messages generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
