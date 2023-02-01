
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-can-msg-filters, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can";
  version = "1.0.16-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DataspeedInc-release";
        repo = "dataspeed_can-release";
        rev = "release/melodic/dataspeed_can/1.0.16-1";
        sha256 = "sha256-GvbRVesJOGrwL3+VbE61M7y4gwE8DBFTqb59LzdwXxA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dataspeed-can-msg-filters dataspeed-can-tools dataspeed-can-usb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus tools using Dataspeed hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
