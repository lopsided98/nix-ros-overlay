
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tango-icon-theme }:
buildRosPackage {
  pname = "ros-foxy-tango-icons-vendor";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "tango_icons_vendor-release";
        rev = "release/foxy/tango_icons_vendor/0.1.0-1";
        sha256 = "sha256-KYWpnGweFrcZ6B1TZpvga3g7b7BSw/gpETwjyjhaPz4=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tango-icon-theme ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tango_icons_vendor provides the public domain Tango icons for non-linux systems (<a href="http://tango-project.org/Tango_Icon_Library/">Tango Icon Library</a>) from the <a href="http://tango-project.org/Tango_Desktop_Project/">Tango Desktop Project</a>'';
    license = with lib.licenses; [ asl20 publicDomain ];
  };
}
