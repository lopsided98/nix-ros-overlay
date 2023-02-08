
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, imagezero-ros, message-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-imagezero-image-transport";
  version = "0.2.4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "swri-robotics-gbp";
        repo = "imagezero_transport-release";
        rev = "release/melodic/imagezero_image_transport/0.2.4-0";
        sha256 = "sha256-BENMAIdW1ulOJr0Sh9YeVc7N2+HzuyMjWvzDZI4GN8Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport imagezero-ros message-runtime sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A plugin to image_transport for transparently sending images encoded with ImageZero.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
