
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, kvh-geo-fog-3d-msgs, qt5, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-kvh-geo-fog-3d-rviz";
  version = "1.5.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MITRE";
        repo = "kvh_geo_fog_3d-release";
        rev = "release/melodic/kvh_geo_fog_3d_rviz/1.5.1-1";
        sha256 = "sha256-QwWD95ht7fYpC8FMr1LfwRlt6vipVp+7lMtQFNe66TU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase qt5.qtdeclarative qt5.qtmultimedia qt5.qtsvg roslint ];
  propagatedBuildInputs = [ diagnostic-msgs kvh-geo-fog-3d-msgs rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The KVH GEO FOG 3D rviz plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
