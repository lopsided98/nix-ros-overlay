
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-manager, pr2-controllers-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-mannequin-mode";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_mannequin_mode/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "bd942a926267442a2232ac55b6019f8aa0e6494879ca4030ab18837c93e1f37f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-controller-manager pr2-controllers-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mannequin_mode package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
