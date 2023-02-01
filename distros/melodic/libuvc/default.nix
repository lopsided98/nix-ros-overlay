
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libjpeg, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-libuvc";
  version = "0.0.6";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "libuvc-release";
        rev = "release/melodic/libuvc/0.0.6-0";
        sha256 = "sha256-iqz5CDravbnxCPIZbnRPq+BQAfriKYYm5nmppVg/bc8=";
      };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ catkin libjpeg libusb1 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''USB Video Class driver library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
