
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, trajectory-msgs, catkin, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-pr2-mannequin-mode";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_mannequin_mode/0.6.1-0.tar.gz;
    sha256 = "bd942a926267442a2232ac55b6019f8aa0e6494879ca4030ab18837c93e1f37f";
  };

  buildInputs = [ pr2-controllers-msgs trajectory-msgs pr2-controller-manager ];
  propagatedBuildInputs = [ pr2-controllers-msgs trajectory-msgs pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mannequin_mode package'';
    #license = lib.licenses.BSD;
  };
}
