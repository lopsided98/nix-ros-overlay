
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, ixblue-ins-msgs, ixblue-stdbin-decoder, libpcap, nav-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ixblue-ins-driver";
  version = "0.1.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ixblue";
        repo = "ixblue_ins_stdbin_driver-release";
        rev = "release/noetic/ixblue_ins_driver/0.1.5-1";
        sha256 = "sha256-NtYgVa3xwzyAPkZyJUJApX8wlF6tynzpQ7HprRa2JrA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ boost libpcap ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater ixblue-ins-msgs ixblue-stdbin-decoder nav-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The iXblue_ins_driver package'';
    license = with lib.licenses; [ mit ];
  };
}
