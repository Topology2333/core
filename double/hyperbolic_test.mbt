// Copyright 2025 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

///|
test "hyperbolic" {
  // sinh
  inspect(0.0.sinh(), content="0")
  inspect((-0.0).sinh(), content="0")
  inspect(1.0.sinh(), content="1.1752011936438014")
  inspect(2.0.sinh(), content="3.626860407847019")
  inspect(1000.0.sinh(), content="Infinity")
  inspect((-1000.0).sinh(), content="-Infinity")
  inspect(not_a_number.sinh(), content="NaN")
  inspect(infinity.sinh(), content="Infinity")
  inspect(neg_infinity.sinh(), content="-Infinity")

  // cosh
  inspect(0.0.cosh(), content="1")
  inspect((-0.0).cosh(), content="1")
  inspect(1.0.cosh(), content="1.5430806348152437")
  inspect(2.0.cosh(), content="3.7621956910836314")
  inspect(1000.0.cosh(), content="Infinity")
  inspect((-1000.0).cosh(), content="Infinity")
  inspect(not_a_number.cosh(), content="NaN")
  inspect(infinity.cosh(), content="Infinity")
  inspect(neg_infinity.cosh(), content="Infinity")

  // tanh
  inspect(0.0.tanh(), content="0")
  inspect((-0.0).tanh(), content="0")
  inspect(1.0.tanh(), content="0.7615941559557649")
  inspect(2.0.tanh(), content="0.9640275800758169")
  inspect(1000.0.tanh(), content="1")
  inspect((-1000.0).tanh(), content="-1")
  inspect(not_a_number.tanh(), content="NaN")
  inspect(infinity.tanh(), content="1")
  inspect(neg_infinity.tanh(), content="-1")
  let vals = [
    1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.0, -1.234, -2.345, -3.456, -4.567,
    -5.678, -6.789, -7.890, -8.901, -9.012, -10.123, 0.0123, 0.0234, 0.0345, 0.0456,
    0.0567, 0.0678, 0.0789, 0.0901, 0.1012, 0.1123, -0.000987, -0.000876, -0.000765,
    -0.000654, -0.000543, -0.000432, -0.000321, -0.000210, -0.000109, -0.0000987,
  ]
  let sinh_res = [
    1.335647470124177, 4.457105170535894, 13.537877876628322, 40.71929566253254,
    122.34392274639096, 367.54691443696754, 1104.173769530013, 3317.121927772407,
    9965.185194027807, 11013.232874703393, -1.5719080591023373, -5.16871276270921,
    -15.829203536269521, -48.12226118882152, -146.18034808938464, -444.01198324158304,
    -1335.221773103615, -3669.654521825806, -4100.453287758706, -12454.693487867075,
    0.012300310146846098, 0.023402135542466045, 0.034506844344811376, 0.04561580477910179,
    0.05673038559440594, 0.06785195623228675, 0.07898188699553199, 0.090221954941215,
    0.10137282743102088, 0.11253619019513764, -0.0009870001602508085, -0.0008760001120369003,
    -0.0007650000746161896, -0.000654000046621045, -0.0005430000266838349, -0.0004320000134369281,
    -0.00032100000551269354, -0.0002100000015435, -0.00010900000021583818, -0.0000987000001602508,
  ]
  let cosh_res = [
    1.6685185538222564, 4.567908328898228, 13.574761044029561, 40.7315730024356,
    122.34800951782942, 367.5482748050051, 1104.174222357196, 3317.1220785054825,
    9965.18524420249, 11013.232920103324, 1.8630338016984225, 5.264559964839708,
    15.860759269109643, 48.13265026907575, 146.18376848177658, 444.01310933588866,
    1335.2221475731901, 3669.6546580784116, 4100.4534096964435, 12454.693528012582,
    1.0000756459536992, 1.0002737924928093, 1.000595184031303, 1.0010398601682378,
    1.0016078756927234, 1.0022993005906708, 1.0031142200534169, 1.0040617516634196,
    1.0051250917877632, 1.0063122746462134, 1.0000004870845396, 1.0000003836880245,
    1.0000002926125142, 1.0000002138580075, 1.0000001474245037, 1.0000000933120015,
    1.0000000515205005, 1.00000002205, 1.0000000059405, 1.000000004870845,
  ]
  let tanh_res = [
    0.8004990217606297, 0.9757431300314515, 0.9972829600991421, 0.9996985792838805,
    0.9999665971563038, 0.9999962988044543, 0.999999589895169, 0.9999999545590812,
    0.9999999949650026, 0.9999999958776927, -0.8437356625893302, -0.9817938815835262,
    -0.9980104525700998, -0.9997841573194879, -0.9999766021055041, -0.9999974638264458,
    -0.9999997195451141, -0.9999999628704556, -0.9999999702623773, -0.9999999967766764,
    0.012299379748535112, 0.023395729967237218, 0.034486318638659225, 0.04556841999422027,
    0.05663931661396988, 0.06769630208491666, 0.07873668363641192, 0.08985697821049864,
    0.10085593152461685, 0.11183028671164891, -0.000986999679498524, -0.0008759997759262768,
    -0.0007649998507676599, -0.0006539999067579279, -0.0005429999466323373, -0.000431999973126146,
    -0.00032099998897461345, -0.00020999999691300006, -0.00010899999956832366, -0.00009869999967949839,
  ]
  fn high_accuracy_test(expect : Double, actual : Double) -> Unit raise Error {
    let ulp = (expect.reinterpret_as_int64() - actual.reinterpret_as_int64()).abs()
    assert_true(ulp <= 1)
  }

  for i in 0..<vals.length() {
    high_accuracy_test(vals[i].sinh(), sinh_res[i])
    high_accuracy_test(vals[i].cosh(), cosh_res[i])
    high_accuracy_test(vals[i].tanh(), tanh_res[i])
  }
}

///|
test "asinh" {
  // asinh
  inspect(0.0.asinh(), content="0")
  inspect((-0.0).asinh(), content="0")
  inspect(1.0.asinh(), content="0.881373587019543")
  inspect(2.0.asinh(), content="1.4436354751788103")
  inspect(1000.0.asinh(), content="7.600902709541988")
  inspect((-1000.0).asinh(), content="-7.600902709541988")
  inspect(not_a_number.asinh(), content="NaN")
  inspect(infinity.asinh(), content="Infinity")
  inspect(neg_infinity.asinh(), content="-Infinity")
  let vals = [
    0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 0.98, -0.123, -0.234, -0.345, -0.456,
    -0.567, -0.678, -0.789, -0.890, -0.901, -0.987, 0.0123, 0.0234, 0.0345, 0.0456,
    0.0567, 0.0678, 0.0789, 0.0901, 0.1012, 0.1123, 123.45, 234.56, 345.67, 456.78,
    567.89, 678.90, 789.01, 890.12, 901.23, 987.65,
  ]
  let asinh_res = [
    0.09983407889920758, 0.19869011034924142, 0.29567304756342244, 0.39003531977071526,
    0.48121182505960347, 0.5688248987322475, 0.6526665660823557, 0.732668256045411,
    0.8088669356527824, 0.8671605068296652, -0.12269194815825955, -0.23191548119382788,
    -0.33849859640169994, -0.4415150418004598, -0.540322492483581, -0.6345503478075646,
    -0.724055636405336, -0.801415491253481, -0.8096100450256065, -0.8721512591938079,
    0.01229968987661289, 0.023397865042016096, 0.0344931597256035, 0.045584211632907545,
    0.05666966315736541, 0.06774816286572787, 0.07881836696462896, 0.08997853774308309,
    0.1010280523188844, 0.11206528827213337, 5.508999800251921, 6.150863143162183,
    6.538633835534552, 6.817350253294403, 7.0350756937495404, 7.213621564277984,
    7.363926577179187, 7.484503781189334, 7.496907985311977, 7.5884758208251615,
  ]
  fn high_accuracy_test(expect : Double, actual : Double) -> Unit raise Error {
    let ulp = (expect.reinterpret_as_int64() - actual.reinterpret_as_int64()).abs()
    assert_true(ulp <= 1)
  }

  for i in 0..<vals.length() {
    high_accuracy_test(vals[i].asinh(), asinh_res[i])
  }
}

///|
test "acosh" {
  // acosh
  inspect(1.0.acosh(), content="0")
  inspect(2.0.acosh(), content="1.3169578969248166")
  inspect(1000.0.acosh(), content="7.600902209541989")
  inspect(not_a_number.acosh(), content="NaN")
  inspect(infinity.acosh(), content="Infinity")
  inspect((-1.0).acosh(), content="NaN")
  inspect((-2.0).acosh(), content="NaN")
  inspect(neg_infinity.acosh(), content="NaN")
  let vals = [
    1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.0, 123.45, 234.56, 345.67, 456.78,
    567.89, 678.90, 789.01, 890.12, 901.23, 987.65,
  ]
  let acosh_res = [
    0.4435682543851154, 1.4254169430706127, 1.8632793511534487, 2.1615809409653055,
    2.3895264345742184, 2.5744275717153626, 2.7301240249673335, 2.8646548502114,
    2.9831213623142894, 2.993222846126381, 5.508966991643043, 6.150854055292339,
    6.538629651005136, 6.817347856913533, 7.035074143357386, 7.213620479456226, 7.363925774013791,
    7.4845031501260895, 7.496907369711817, 7.588475308242551,
  ]
  fn high_accuracy_test(expect : Double, actual : Double) -> Unit raise Error {
    let ulp = (expect.reinterpret_as_int64() - actual.reinterpret_as_int64()).abs()
    assert_true(ulp <= 1)
  }

  for i in 0..<vals.length() {
    high_accuracy_test(vals[i].acosh(), acosh_res[i])
  }
}

///|
test "atanh" {
  // atanh
  inspect(0.0.atanh(), content="0")
  inspect((-0.0).atanh(), content="0")
  inspect(0.5.atanh(), content="0.5493061443340548")
  inspect((-0.5).atanh(), content="-0.5493061443340548")
  inspect(1.0.atanh(), content="Infinity")
  inspect((-1.0).atanh(), content="-Infinity")
  inspect(1.5.atanh(), content="NaN")
  inspect(not_a_number.atanh(), content="NaN")
  inspect(infinity.atanh(), content="NaN")
  inspect(neg_infinity.atanh(), content="NaN")
  let vals = [
    0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 0.98, -0.123, -0.234, -0.345, -0.456,
    -0.567, -0.678, -0.789, -0.890, -0.901, -0.987, 0.0123, 0.0234, 0.0345, 0.0456,
    0.0567, 0.0678, 0.0789, 0.0901, 0.1012, 0.1123,
  ]
  let atanh_res = [
    0.10033534773107558, 0.2027325540540822, 0.30951960420311175, 0.42364893019360184,
    0.5493061443340548, 0.6931471805599453, 0.8673005276940531, 1.0986122886681098,
    1.4722194895832204, 2.2975599250672945, -0.12362598118313008, -0.23841701736237092,
    -0.3597570282003437, -0.4922494909503443, -0.6430902571767654, -0.8254031707413717,
    -1.0687769750163265, -1.421925871130636, -1.4775077461769197, -2.5147159425451395,
    0.012300620345312199, 0.023404272371715773, 0.034513697658514295, 0.04563164576315292,
    0.05676087889558879, 0.06790417606372265, 0.07906433728155227, 0.09034500538583387,
    0.10154761647863907, 0.11277568726185497,
  ]
  fn high_accuracy_test(expect : Double, actual : Double) -> Unit raise Error {
    let ulp = (expect.reinterpret_as_int64() - actual.reinterpret_as_int64()).abs()
    assert_true(ulp <= 1)
  }

  for i in 0..<vals.length() {
    high_accuracy_test(vals[i].atanh(), atanh_res[i])
  }
}
