
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, dynamic-reconfigure, gtest, libyamlcpp, marti-common-msgs, marti-introspection-msgs, message-generation, message-runtime, nav-msgs, pkg-config, roscpp, rostest, rosunit, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-swri-roscpp";
  version = "2.15.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "swri-robotics-gbp";
        repo = "marti_common-release";
        rev = "release/melodic/swri_roscpp/2.15.2-1";
        sha256 = "sha256-iYDok1TQuOKAmykFkMTedTrobmTiHAbtj+N12OeYUO4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ gtest message-generation message-runtime rostest rosunit ];
  propagatedBuildInputs = [ boost diagnostic-updater dynamic-reconfigure libyamlcpp marti-common-msgs marti-introspection-msgs nav-msgs roscpp std-msgs std-srvs ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
