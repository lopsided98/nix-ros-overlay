
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-pdu-msgs";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "NewEagleRaptor";
        repo = "raptor-dbw-ros2-release";
        rev = "release/foxy/raptor_pdu_msgs/1.2.0-1";
        sha256 = "sha256-YwRaEfDzqb4PO12ulBbo3j+u8ZzWU4mWsupKazkpdFI=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for the New Eagle Multiplex Power Distribution Module (MPDM) interface
    https://store.neweagle.net/product/multiplexed-power-distribution-module-mpdm/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
