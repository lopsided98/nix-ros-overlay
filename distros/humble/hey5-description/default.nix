
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-hey5-description";
  version = "3.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "hey5_description-release";
        rev = "release/humble/hey5_description/3.0.2-1";
        sha256 = "sha256-p0BTEE4n2qNbAvmcaKEfpnOGbNTcU4s7T8NfbNuIr+A=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
    etc.) of the Hey5 hand.  The files in this package are parsed and used by
    a variety of other components.  Most users will not interact directly
    with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
